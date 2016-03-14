const regexp = /(.|\n)+(Requests.sec:\s+\d+\.\d+)\n(Transfer.sec:\s+\d+\..+)/gm;

export default function format(result) {
  return result.replace(regexp, '$2\n$3');
}
